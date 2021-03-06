
import std.stdio;
import czmq;

int main(char[][] args)
{
    zctx_t* ctx = zctx_new();
    void* socket;

    static if(ZMQ_VERSION_MAJOR == 2)
    {
        socket = zsocket_new(ctx, ZMQ_SUB);
        zsockopt_set_hwm(socket, 1);
        assert (zsockopt_hwm(socket) == 1);
        zsockopt_hwm(socket);
        zsocket_destroy(ctx, socket);
        socket = zsocket_new(ctx, ZMQ_SUB);
        zsockopt_set_swap(socket, 1);
        assert (zsockopt_swap(socket) == 1);
        zsockopt_swap(socket);
        zsocket_destroy(ctx, socket);
        socket = zsocket_new(ctx, ZMQ_SUB);
        zsockopt_set_affinity(socket, 1);
        assert (zsockopt_affinity(socket) == 1);
        zsockopt_affinity(socket);
        zsocket_destroy(ctx, socket);
        socket = zsocket_new(ctx, ZMQ_SUB);
        zsockopt_set_identity(socket, "test".ptr);
        zsocket_destroy(ctx, socket);
        socket = zsocket_new(ctx, ZMQ_SUB);
        zsockopt_set_rate(socket, 1);
        assert (zsockopt_rate(socket) == 1);
        zsockopt_rate (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new(ctx, ZMQ_SUB);
        zsockopt_set_recovery_ivl(socket, 1);
        assert (zsockopt_recovery_ivl(socket) == 1);
        zsockopt_recovery_ivl(socket);
        zsocket_destroy(ctx, socket);
        socket = zsocket_new(ctx, ZMQ_SUB);
        zsockopt_set_recovery_ivl_msec(socket, 1);
        assert (zsockopt_recovery_ivl_msec(socket) == 1);
        zsockopt_recovery_ivl_msec(socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_mcast_loop (socket, 1);
        assert (zsockopt_mcast_loop (socket) == 1);
        zsockopt_mcast_loop (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_sndbuf (socket, 1);
        assert (zsockopt_sndbuf (socket) == 1);
        zsockopt_sndbuf (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_rcvbuf (socket, 1);
        assert (zsockopt_rcvbuf (socket) == 1);
        zsockopt_rcvbuf (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_linger (socket, 1);
        assert (zsockopt_linger (socket) == 1);
        zsockopt_linger (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_reconnect_ivl (socket, 1);
        assert (zsockopt_reconnect_ivl (socket) == 1);
        zsockopt_reconnect_ivl (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_reconnect_ivl_max (socket, 1);
        assert (zsockopt_reconnect_ivl_max (socket) == 1);
        zsockopt_reconnect_ivl_max (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_backlog (socket, 1);
        assert (zsockopt_backlog (socket) == 1);
        zsockopt_backlog (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_subscribe (socket, "test".ptr);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_unsubscribe (socket, "test".ptr);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_type (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_rcvmore (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_fd (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_events (socket);
        zsocket_destroy (ctx, socket);
    }


    static if(ZMQ_VERSION_MAJOR == 3)
    {
        socket = zsocket_new (ctx, ZMQ_PUB);
        zsockopt_set_sndhwm (socket, 1);
        assert (zsockopt_sndhwm (socket) == 1);
        zsockopt_sndhwm (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_rcvhwm (socket, 1);
        assert (zsockopt_rcvhwm (socket) == 1);
        zsockopt_rcvhwm (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_affinity (socket, 1);
        assert (zsockopt_affinity (socket) == 1);
        zsockopt_affinity (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_identity (socket, "test".ptr);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_rate (socket, 1);
        assert (zsockopt_rate (socket) == 1);
        zsockopt_rate (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_recovery_ivl (socket, 1);
        assert (zsockopt_recovery_ivl (socket) == 1);
        zsockopt_recovery_ivl (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_PUB);
        zsockopt_set_sndbuf (socket, 1);
        assert (zsockopt_sndbuf (socket) == 1);
        zsockopt_sndbuf (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_rcvbuf (socket, 1);
        assert (zsockopt_rcvbuf (socket) == 1);
        zsockopt_rcvbuf (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_linger (socket, 1);
        assert (zsockopt_linger (socket) == 1);
        zsockopt_linger (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_reconnect_ivl (socket, 1);
        assert (zsockopt_reconnect_ivl (socket) == 1);
        zsockopt_reconnect_ivl (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_reconnect_ivl_max (socket, 1);
        assert (zsockopt_reconnect_ivl_max (socket) == 1);
        zsockopt_reconnect_ivl_max (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_backlog (socket, 1);
        assert (zsockopt_backlog (socket) == 1);
        zsockopt_backlog (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_maxmsgsize (socket, 1);
        assert (zsockopt_maxmsgsize (socket) == 1);
        zsockopt_maxmsgsize (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_subscribe (socket, "test".ptr);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_unsubscribe (socket, "test".ptr);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_type (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_rcvmore (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_fd (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_events (socket);
        zsocket_destroy (ctx, socket);

        zsockopt_set_hwm (socket, 1);
    }

    //Really? 3 is still beta...
    static if(ZMQ_VERSION_MAJOR == 4)
    {
        socket = zsocket_new (ctx, ZMQ_PUB);
        zsockopt_set_sndhwm (socket, 1);
        assert (zsockopt_sndhwm (socket) == 1);
        zsockopt_sndhwm (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_rcvhwm (socket, 1);
        assert (zsockopt_rcvhwm (socket) == 1);
        zsockopt_rcvhwm (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_affinity (socket, 1);
        assert (zsockopt_affinity (socket) == 1);
        zsockopt_affinity (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_rate (socket, 1);
        assert (zsockopt_rate (socket) == 1);
        zsockopt_rate (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_recovery_ivl (socket, 1);
        assert (zsockopt_recovery_ivl (socket) == 1);
        zsockopt_recovery_ivl (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_PUB);
        zsockopt_set_sndbuf (socket, 1);
        assert (zsockopt_sndbuf (socket) == 1);
        zsockopt_sndbuf (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_rcvbuf (socket, 1);
        assert (zsockopt_rcvbuf (socket) == 1);
        zsockopt_rcvbuf (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_linger (socket, 1);
        assert (zsockopt_linger (socket) == 1);
        zsockopt_linger (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_reconnect_ivl (socket, 1);
        assert (zsockopt_reconnect_ivl (socket) == 1);
        zsockopt_reconnect_ivl (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_reconnect_ivl_max (socket, 1);
        assert (zsockopt_reconnect_ivl_max (socket) == 1);
        zsockopt_reconnect_ivl_max (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_backlog (socket, 1);
        assert (zsockopt_backlog (socket) == 1);
        zsockopt_backlog (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_maxmsgsize (socket, 1);
        assert (zsockopt_maxmsgsize (socket) == 1);
        zsockopt_maxmsgsize (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_subscribe (socket, "test".ptr);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_set_unsubscribe (socket, "test".ptr);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_type (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_rcvmore (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_fd (socket);
        zsocket_destroy (ctx, socket);
        socket = zsocket_new (ctx, ZMQ_SUB);
        zsockopt_events (socket);
        zsocket_destroy (ctx, socket);

        zsockopt_set_hwm (socket, 1);
    }

    zctx_destroy (&ctx);
    assert (ctx == null);
    writeln("test_zsockopt passes");

    return 0;
}

