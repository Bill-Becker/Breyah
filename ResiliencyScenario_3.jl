using HiGHS
using JuMP
using REopt



ENV["NREL_DEVELOPER_API_KEY"]="0Kz4idK0TQwavTkb4DZQo1SqeIjIcbr1GpRGwwLa"

m1 = Model(optimizer_with_attributes(HiGHS.Optimizer, "output_flag" => false, "log_to_console" => false, "mip_rel_gap"=> 0.10))

fp = REoptInputs("Scenario3.json")

results = REopt.run_reopt(m1, fp)


