.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo$12;
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

    .line 236
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->vss_panel_item_none_effect:I

    sget v2, Lcom/transsion/camera/R$string;->video_sight_shock_no_effect:I

    const-string v3, "0"

    const-string v4, "key_video_filter_style"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->c_video_filter_professional:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_professional:I

    const-string v3, "1"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->c_video_filter_vibrant:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_vibrant:I

    const-string v3, "2"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->c_video_filter_teal_orange:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_teal_orange:I

    const-string v3, "3"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->c_video_filter_classicneg:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_classicneg:I

    const-string v3, "4"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->c_video_filter_northernforest:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_northernforest:I

    const-string v3, "5"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->c_video_filter_amelie:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_moody_warm:I

    const-string v3, "6"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->c_video_filter_lalaland:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_retro_style:I

    const-string v3, "7"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->c_video_filter_monochrome:I

    sget v2, Lcom/transsion/camera/R$string;->video_filter_item_mono_chrome:I

    const-string v3, "8"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
