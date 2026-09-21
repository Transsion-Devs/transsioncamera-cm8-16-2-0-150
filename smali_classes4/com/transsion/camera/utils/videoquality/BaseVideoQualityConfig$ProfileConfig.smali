.class public Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ProfileConfig"
.end annotation


# instance fields
.field final audioBitRate:I

.field final audioChannels:I

.field final audioCodec:I

.field final audioSampleRate:I

.field final duration:I

.field final fileFormat:I

.field final quality:I

.field final videoBitRate:I

.field final videoCodec:I

.field final videoFrameHeight:I

.field final videoFrameRate:I

.field final videoFrameWidth:I


# direct methods
.method constructor <init>(IIIIIIIIIIII)V
    .registers 13

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->duration:I

    .line 157
    iput p2, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->quality:I

    .line 158
    iput p3, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->fileFormat:I

    .line 159
    iput p4, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoCodec:I

    .line 160
    iput p5, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoBitRate:I

    .line 161
    iput p6, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoFrameRate:I

    .line 162
    iput p7, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoFrameWidth:I

    .line 163
    iput p8, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoFrameHeight:I

    .line 164
    iput p9, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->audioCodec:I

    .line 165
    iput p10, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->audioBitRate:I

    .line 166
    iput p11, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->audioSampleRate:I

    .line 167
    iput p12, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->audioChannels:I

    return-void
.end method
