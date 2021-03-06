function m_p_used = propellant_for_velocity_change(v_initial, v_target, m_0, V_eff)
%propelant_for_velocity_change Calculates m_p required for instant delta V
%   Given a Stage object with v_initial as initial velocity this function
%   calculates the propellant required to reach the target velocity
%   v_target.
    delta_V_required = norm(v_initial - v_target);
    m_p_used = m_0*(1-exp(-delta_V_required/V_eff));
end

