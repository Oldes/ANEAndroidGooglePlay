.class Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
.super Lorg/java_websocket/server/WebSocketServer;
.source "WandWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/connection/WandWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WandSocketServer"
.end annotation


# instance fields
.field private mHasStartedServer:Z

.field final synthetic this$0:Lcom/adobe/air/wand/connection/WandWebSocket;


# direct methods
.method public constructor <init>(Lcom/adobe/air/wand/connection/WandWebSocket;Ljava/net/InetSocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 242
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    .line 243
    invoke-direct {p0, p2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    .line 244
    return-void
.end method

.method private scheduleHandshakeTimer()V
    .locals 4

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$600(Lcom/adobe/air/wand/connection/WandWebSocket;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer$1;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 4

    .prologue
    .line 351
    const-string v1, "OPEN_SYNCHRONIZER"

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v2, 0x0

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0, v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;

    .line 357
    const-string v2, "HANDSHAKE_SYNCHRONIZER"

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v3, 0x0

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v0, v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    .line 362
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectionClose()V

    .line 364
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 369
    return-void

    .line 364
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 368
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 438
    if-eqz p1, :cond_0

    .line 439
    const/16 v0, 0x3eb

    :try_start_0
    const-string v1, "AIR Gamepad is already connected"

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 374
    const-string v3, "OPEN_SYNCHRONIZER"

    monitor-enter v3

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-eq p1, v0, :cond_0

    monitor-exit v3

    .line 428
    :goto_0
    return-void

    .line 378
    :cond_0
    const-string v4, "HANDSHAKE_SYNCHRONIZER"

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 381
    const-string v0, "NO_OP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 383
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/adobe/air/wand/connection/Connection$Listener;->onReceive(Ljava/lang/String;)V

    .line 384
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 388
    :cond_3
    :try_start_5
    const-string v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 394
    :try_start_6
    invoke-static {p2}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->parse(Ljava/lang/String;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    .line 401
    :try_start_7
    iget-object v5, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # invokes: Lcom/adobe/air/wand/connection/WandWebSocket;->validateHandshake(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V
    invoke-static {v5, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$800(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 409
    :goto_1
    if-nez v1, :cond_4

    .line 411
    const/16 v1, 0x3eb

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid AIR Gamepad handshake : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    .line 413
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 398
    :try_start_a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to parse the handshake"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 403
    :catch_1
    move-exception v0

    .line 406
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 419
    :try_start_c
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectionOpen(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 426
    :cond_5
    :goto_2
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 427
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 421
    :catch_2
    move-exception v0

    .line 423
    :try_start_f
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v1, 0x0

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    invoke-static {v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    goto :goto_2

    .line 426
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
.end method

.method public onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    .locals 2

    .prologue
    .line 298
    const-string v1, "OPEN_SYNCHRONIZER"

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$400(Lcom/adobe/air/wand/connection/WandWebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;

    .line 304
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->scheduleHandshakeTimer()V

    .line 308
    monitor-exit v1

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    const/16 v0, 0x3eb

    const-string v1, "AIR Gamepad is already connected"

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-super {p0}, Lorg/java_websocket/server/WebSocketServer;->start()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    :try_start_0
    invoke-super {p0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    .line 276
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$000(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # invokes: Lcom/adobe/air/wand/connection/WandWebSocket;->forceCloseConnection()V
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$200(Lcom/adobe/air/wand/connection/WandWebSocket;)V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v1, 0x0

    # setter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    invoke-static {v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$002(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # invokes: Lcom/adobe/air/wand/connection/WandWebSocket;->startSocketServer()V
    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$300(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0

    .line 267
    :catch_1
    move-exception v0

    goto :goto_1
.end method
