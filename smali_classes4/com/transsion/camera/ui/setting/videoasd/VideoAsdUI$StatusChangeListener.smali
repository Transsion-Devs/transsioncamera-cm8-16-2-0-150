.class Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 254
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 257
    const-string v0, "key_macro_status"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_3a

    .line 258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_5d

    .line 265
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$fputmIsMacroEnable(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Z)V

    return-void

    .line 260
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$fputmIsMacroEnable(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Z)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$mhideAsdResult(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)V

    return-void

    .line 268
    :cond_3a
    const-string v0, "key_record_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$fputmVideoRecorderState(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$mcheckVideoRecordStart(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->-$$Nest$mhideAsdResult(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)V

    :cond_5d
    :goto_5d
    return-void
.end method
