.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo$10;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 6

    .line 208
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->vss_panel_item_none_effect:I

    sget v2, Lcom/transsion/camera/R$string;->video_sight_shock_no_effect:I

    const-string v3, "0"

    const-string v4, "key_video_filter_style"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->a_video_filter_professional:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_professional:I

    const-string v3, "1"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->a_video_filter_vibrant:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_vibrant:I

    const-string v3, "2"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->a_video_filter_morocco:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_morocco:I

    const-string v3, "3"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->a_video_filter_teal_orange:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_teal_orange:I

    const-string v3, "4"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->a_video_filter_prairie:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_praitrie:I

    const-string v3, "5"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->a_video_filter_capetown:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_capetown:I

    const-string v3, "6"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->a_video_filter_mauritius:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_mauritius:I

    const-string v3, "7"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->a_video_filter_monochrome:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_mono_chrome:I

    const-string v3, "8"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
