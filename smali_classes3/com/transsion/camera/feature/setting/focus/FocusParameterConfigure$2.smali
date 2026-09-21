.class Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public laserFocusSupport()Z
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmFocus(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/Focus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->laserFocusSupport()Z

    move-result p0

    return p0
.end method

.method public onAutoFocusMoving(Z)V
    .registers 6

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmLock(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 309
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmFocusStateListener(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmDisableUpdateFocusState(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_47

    .line 315
    :cond_18
    invoke-static {}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onAutoFocusMoving] start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_3e

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string p1, "PASSIVE_SCAN"

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$mupdateFocusState(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V

    goto :goto_45

    :catchall_3c
    move-exception p0

    goto :goto_75

    .line 319
    :cond_3e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string p1, "PASSIVE_FOCUSED"

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$mupdateFocusState(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V

    .line 321
    :goto_45
    monitor-exit v0

    return-void

    .line 310
    :cond_47
    :goto_47
    invoke-static {}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAutoFocusMoving] mFocusStateListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmFocusStateListener(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mDisableUpdateFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmDisableUpdateFocusState(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    monitor-exit v0

    return-void

    .line 321
    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_7 .. :try_end_76} :catchall_3c

    throw p0
.end method

.method public onLaserFocused(Z)V
    .registers 4

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_c

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string p1, "LASER_SCAN"

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$mupdateFocusState(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V

    return-void

    .line 302
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string p1, "LASER_FOCUSEND"

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$mupdateFocusState(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V

    return-void
.end method
