.class Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 6

    if-nez p2, :cond_42

    .line 137
    invoke-static {}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " data = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mHintControl = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p2}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->access$000(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->-$$Nest$fputmIsRunningVideoSuperNight(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;Z)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->-$$Nest$mupdateHint(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;)V

    :cond_42
    return-void
.end method
