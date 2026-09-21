.class Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotInfo$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->video_portrait_spot_effect_switch:I

    sget v2, Lcom/transsion/camera/R$string;->video_portrait_spot_switch:I

    const-string v3, "key_portrait_spot_switch"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->video_portrait:I

    sget v2, Lcom/transsion/camera/R$string;->video_portrait:I

    const-string v3, "key_video_portrait"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->video_spot:I

    sget v2, Lcom/transsion/camera/R$string;->video_spot:I

    const-string v3, "key_video_spot"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
