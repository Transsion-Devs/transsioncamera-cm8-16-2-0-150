.class Lcom/ss/android/vesdk/VEEditor$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 998
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenGLCreate(I)I
    .registers 3

    .line 1001
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOpenGLCreate: ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEEditor"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onOpenGLDestroy(I)I
    .registers 3

    .line 1063
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOpenGLDestroy: ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEEditor"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onOpenGLDrawAfter(ID)I
    .registers 14

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpenGLDrawing: tex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " timeStamp = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VEEditor"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2000(Lcom/ss/android/vesdk/VEEditor;)Z

    move-result p1

    if-nez p1, :cond_12f

    .line 1015
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    const/4 p3, 0x1

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z
    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VEEditor;->access$2002(Lcom/ss/android/vesdk/VEEditor;Z)Z

    .line 1016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1017
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_43

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v2

    goto :goto_44

    :cond_43
    move-wide v2, v0

    .line 1018
    :goto_44
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2100(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-lez p1, :cond_55

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2100(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v6

    goto :goto_5b

    :cond_55
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2200(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v6

    :goto_5b
    cmp-long p1, v6, v4

    if-eqz p1, :cond_69

    .line 1019
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2300(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v4

    cmp-long p1, v6, v4

    if-gez p1, :cond_a5

    .line 1020
    :cond_69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpenGLDrawAfter time report error, mlFirstPlayTimeMS = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J
    invoke-static {v4}, Lcom/ss/android/vesdk/VEEditor;->access$2100(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mlFirstSeekTimeMS = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    .line 1021
    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J
    invoke-static {v4}, Lcom/ss/android/vesdk/VEEditor;->access$2200(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mlInitTimeMS = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J
    invoke-static {v4}, Lcom/ss/android/vesdk/VEEditor;->access$2300(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1020
    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2300(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v6

    .line 1025
    :cond_a5
    :try_start_a5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1026
    const-string v4, "time_init"

    iget-object v5, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J
    invoke-static {v5}, Lcom/ss/android/vesdk/VEEditor;->access$2300(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v8

    sub-long v8, v6, v8

    invoke-virtual {p1, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1027
    const-string v4, "time_seek"

    sub-long v5, v2, v6

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1028
    const-string v4, "time_waiting_surface"

    sub-long v2, v0, v2

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1029
    const-string v2, "time_total"

    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J
    invoke-static {v3}, Lcom/ss/android/vesdk/VEEditor;->access$2300(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1030
    const-string v2, "usage_type"

    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;
    invoke-static {v3}, Lcom/ss/android/vesdk/VEEditor;->access$2400(Lcom/ss/android/vesdk/VEEditor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1031
    const-string v2, "vesdk_event_editor_first_frame_draw"

    const-string v3, "performance"

    invoke-static {v2, p1, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first frame draw cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fc
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_fc} :catch_fd

    goto :goto_112

    :catch_fd
    move-exception p1

    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report first frame json err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :goto_112
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    .line 1037
    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2300(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1036
    const-string p1, "te_edit_first_frame_time"

    invoke-static {p3, p1, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1038
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    move-result-object p1

    if-eqz p1, :cond_12f

    .line 1039
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;->onRendered()V

    .line 1043
    :cond_12f
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # ++operator for: Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2604(Lcom/ss/android/vesdk/VEEditor;)I

    .line 1044
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2600(Lcom/ss/android/vesdk/VEEditor;)I

    move-result p1

    const/16 p3, 0x1e

    const/4 v0, 0x0

    if-ne p1, p3, :cond_190

    .line 1045
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J
    invoke-static {p1, v1, v2}, Lcom/ss/android/vesdk/VEEditor;->access$2702(Lcom/ss/android/vesdk/VEEditor;J)J

    .line 1046
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2800(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2700(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_190

    .line 1047
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2700(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2800(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float p1, v1

    const p3, 0x46ea6000    # 30000.0f

    div-float/2addr p3, p1

    .line 1048
    sget-boolean p1, Lcom/ss/android/vesdk/VERuntimeConfig;->sOpenEditorFpsLog:Z

    if-eqz p1, :cond_182

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render FPS = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_182
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2700(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide p2

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J
    invoke-static {p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->access$2802(Lcom/ss/android/vesdk/VEEditor;J)J

    .line 1052
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # setter for: Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->access$2602(Lcom/ss/android/vesdk/VEEditor;I)I

    :cond_190
    return v0
.end method

.method public onOpenGLDrawBefore(ID)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public onPreviewSurface(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
