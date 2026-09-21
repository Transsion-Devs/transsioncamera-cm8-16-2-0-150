.class Lcom/transsion/camera/ui/setting/level/LevelUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/level/LevelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 319
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/level/LevelUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 322
    invoke-static {}, Lcom/transsion/camera/ui/setting/level/LevelUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged,value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    const-string v0, "key_level"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/level/LevelUI;->-$$Nest$mshowOrHideGradienterInMainThread(Lcom/transsion/camera/ui/setting/level/LevelUI;ZZ)V

    return-void

    .line 325
    :cond_2d
    const-string p2, "key_fold_switch_preview"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->-$$Nest$fgetmPreviewViewRect(Lcom/transsion/camera/ui/setting/level/LevelUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/level/LevelUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_3e
    return-void
.end method
