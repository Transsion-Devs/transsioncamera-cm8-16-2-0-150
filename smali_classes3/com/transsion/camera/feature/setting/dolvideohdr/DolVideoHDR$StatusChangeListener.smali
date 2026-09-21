.class Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 93
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 97
    invoke-static {}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;->getSupport()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    const-string v0, "key_com_video_hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "key_video_hdr_10_plus"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 99
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;->getSupport()Ljava/util/List;

    move-result-object p1

    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;->onValueChanged(Ljava/lang/String;)V

    :cond_59
    return-void
.end method
