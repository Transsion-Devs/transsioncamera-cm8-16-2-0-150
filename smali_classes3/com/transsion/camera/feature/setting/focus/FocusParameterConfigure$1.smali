.class Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


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

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamIdCallback([I)V
    .registers 4

    if-eqz p1, :cond_86

    .line 119
    array-length v0, p1

    if-lez v0, :cond_86

    const/4 v0, 0x0

    .line 120
    aget p1, p1, v0

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)I

    move-result v0

    if-eq v0, p1, :cond_86

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;I)V

    .line 123
    invoke-static {}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentFocusMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmCurrentFocusMode(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmCurrentFocusMode(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "continuous-picture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmCurrentFocusMode(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/String;

    move-result-object p1

    .line 125
    const-string v0, "continuous-video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_77

    .line 127
    :cond_5e
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmCurrentFocusMode(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    return-void

    .line 126
    :cond_77
    :goto_77
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->-$$Nest$fgetmAutoFocusMoveCallback(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    :cond_86
    return-void
.end method
