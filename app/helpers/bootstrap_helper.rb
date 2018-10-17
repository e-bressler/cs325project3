module BootstrapHelper

  def bootstrap_class(alert)
    {
      success: 'alert-success',
      error: 'alert-danger',
      notice: 'alert-success',
      warning: 'alert-warning',
      danger: 'alert-danger',
      alert: 'alert-danger'
    }[alert.to_sym]
  end

end