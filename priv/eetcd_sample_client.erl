%%%-------------------------------------------------------------------
%% @doc Behaviour to implement for eectd {{unmodified_service_name}}
%% @private
%%  All detail documents please visit https://github.com/etcd-io/etcd/blob/master/Documentation/dev-guide/api_reference_v3.md
%% @end
%%%-------------------------------------------------------------------

%% This module was generated on {{datetime}} and should not be modified manually

-module(eetcd_{{module_name}}_gen).

{{#methods}}
-export([{{method}}/{{#input_stream}}1{{/input_stream}}{{^input_stream}}2{{/input_stream}}, {{method}}/{{#input_stream}}2{{/input_stream}}{{^input_stream}}3{{/input_stream}}]).
{{/methods}}

{{#methods}}
%% @doc {{^output_stream}}{{^input_stream}}Unary RPC for service at path `{{full_service_path}}'{{/input_stream}}{{#input_stream}}Stream RPC for service at path `{{full_service_path}}'{{/input_stream}}{{/output_stream}}
-spec {{method}}(Client :: eetcd:client(){{^input_stream}}, Request :: {{pb_module}}:'{{input}}'(){{/input_stream}}) ->
    {{^output_stream}}{{^input_stream}}{ok, {{pb_module}}:'{{output}}'()}{{/input_stream}}{{#input_stream}}{ok, GunPid :: pid(), Http2Ref:: eetcd:stream_ref(), PbModule :: module()}{{/input_stream}}{{/output_stream}}{{#output_stream}}{{^input_stream}}{ok, GunPid :: pid(), Http2Ref:: eetcd:stream_ref(), PbModule :: module()}{{/input_stream}}{{#input_stream}}{ok, GunPid :: pid(), Http2Ref:: eetcd:stream_ref(), PbModule :: module()}{{/input_stream}}{{/output_stream}} | {error, eetcd:eetcd_error()}.
{{method}}(Client{{^input_stream}}, Request{{/input_stream}}) ->
    {{method}}(Client{{^input_stream}}, Request{{/input_stream}}, []).

%% @doc {{^output_stream}}{{^input_stream}}Unary RPC for service at path `{{full_service_path}}'{{/input_stream}}{{#input_stream}}Stream RPC for service at path `{{full_service_path}}'{{/input_stream}}{{/output_stream}}
-spec {{method}}(Client :: eetcd:client(){{^input_stream}}, Request :: {{pb_module}}:'{{input}}'(){{/input_stream}}, Opts :: eetcd:request_opts()) ->
    {{^output_stream}}{{^input_stream}}{ok, {{pb_module}}:'{{output}}'()}{{/input_stream}}{{#input_stream}}{ok, GunPid :: pid(), Http2Ref:: eetcd:stream_ref(), PbModule :: module()}{{/input_stream}}{{/output_stream}}{{#output_stream}}{{^input_stream}}{ok, GunPid :: pid(), Http2Ref:: eetcd:stream_ref(), PbModule :: module()}{{/input_stream}}{{#input_stream}}{ok, GunPid :: pid(), Http2Ref:: eetcd:stream_ref(), PbModule :: module()}{{/input_stream}}{{/output_stream}} | {error, eetcd:eetcd_error()}.
{{method}}(Client{{^input_stream}}, Request{{/input_stream}}, Opts) ->
    {{^output_stream}}{{^input_stream}}eetcd_stream:unary(Client, Request, '{{input}}', <<"{{full_service_path}}">>, '{{output}}', {{pb_module}}, Opts){{/input_stream}}{{#input_stream}}eetcd_stream:new(Client, <<"{{full_service_path}}">>, {{pb_module}}, Opts){{/input_stream}}{{/output_stream}}{{#output_stream}}{{^input_stream}}eetcd_stream:new(Client, Request, <<"{{full_service_path}}">>, {{pb_module}}, Opts){{/input_stream}}{{/output_stream}}.

{{/methods}}
