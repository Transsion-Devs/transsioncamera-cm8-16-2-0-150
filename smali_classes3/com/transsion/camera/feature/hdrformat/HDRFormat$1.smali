.class Lcom/transsion/camera/feature/hdrformat/HDRFormat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/hdrformat/HDRFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/hdrformat/HDRFormat;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/hdrformat/HDRFormat;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/hdrformat/HDRFormat$1;->this$0:Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/hdrformat/HDRFormat$1;->this$0:Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    iget-object v0, v0, Lcom/transsion/camera/feature/hdrformat/HDRFormat;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    const-string v0, "key_com_video_hdr"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_45

    .line 44
    :cond_29
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    const-string p2, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/feature/hdrformat/HDRFormat$1;->this$0:Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    invoke-static {p1}, Lcom/transsion/camera/feature/hdrformat/HDRFormat;->-$$Nest$fgetmProductConfigHLGSupport(Lcom/transsion/camera/feature/hdrformat/HDRFormat;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/hdrformat/HDRFormat$1;->this$0:Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    const-string/jumbo p1, "value_hdr_hlg"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/hdrformat/HDRFormat;->onValueChanged(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void

    .line 50
    :cond_46
    iget-object p0, p0, Lcom/transsion/camera/feature/hdrformat/HDRFormat$1;->this$0:Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/hdrformat/HDRFormat;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method
