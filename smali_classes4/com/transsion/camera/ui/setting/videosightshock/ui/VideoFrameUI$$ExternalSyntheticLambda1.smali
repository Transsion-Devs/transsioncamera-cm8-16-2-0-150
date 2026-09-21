.class public final synthetic Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    check-cast p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->$r8$lambda$pf9fzzSO0nDR7Vqr13zrStvv4nY(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z

    move-result p0

    return p0
.end method
