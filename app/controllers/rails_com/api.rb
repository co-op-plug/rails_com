# frozen_string_literal: true

module RailsCom::Api
  extend ActiveSupport::Concern

  included do
    rescue_from 'StandardError' do |exp|
      if exp.is_a?(ActiveRecord::RecordInvalid)
        logger.debug exp.record.errors.full_messages.join(', ')
      end
      logger.debug exp.full_message(highlight: true, order: :top)

      if RailsCom.config.exception_log && defined?(LogRecord)
        LogRecord.record_to_log(self, exp)
      end
      render json: { error: { class: exp.class.inspect }, message: exp.message }, status: 500 unless self.response_body
    end

    rescue_from 'ActiveRecord::RecordNotFound' do |exp|
      logger.debug exp.full_message(highlight: true, order: :top)
      render json: { error: { class: exp.class.inspect, id: exp.id }, message: exp.message }, status: 404
    end

    rescue_from 'AbstractController::ActionNotFound', 'ActionController::RoutingError' do |exp|
      logger.debug exp.full_message(highlight: true, order: :top)
      render json: { error: { class: exp.class.inspect }, message: exp.message }, status: 404
    end

    rescue_from 'ActionController::ForbiddenError' do |exp|
      logger.debug exp.full_message(highlight: true, order: :top)
      render json: { error: { class: exp.class.inspect }, message: exp.message }, status: 403
    end

    rescue_from 'ActionController::UnauthorizedError' do |exp|
      logger.debug exp.full_message(highlight: true, order: :top)
      render json: { error: { class: exp.class.inspect }, message: exp.message }, status: 401
    end

    rescue_from 'ActionController::ParameterMissing' do |exp|
      logger.debug exp.full_message(highlight: true, order: :top)
      render json: { error: { class: exp.class.inspect }, message: exp.message }, status: 400
    end
  end
  
end
