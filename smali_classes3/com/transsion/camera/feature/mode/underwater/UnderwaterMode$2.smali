.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->onModeChanged(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;

.field final synthetic val$oldModeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;->val$oldModeName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    if-eqz v0, :cond_32

    .line 202
    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;->val$oldModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;->val$oldModeName:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->showNotice()V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateVolumeKeyPrompt(IZ)V

    return-void

    .line 207
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateVolumeKeyPrompt(IZ)V

    :cond_32
    return-void
.end method
