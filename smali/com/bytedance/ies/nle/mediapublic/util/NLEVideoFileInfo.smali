.class public final Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitrate:I

.field private codec:I

.field private duration:I

.field private formatName:Ljava/lang/String;

.field private fps:I

.field private height:I

.field private keyFrameCount:I

.field private maxDuration:I

.field private rotation:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitrate()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->bitrate:I

    return p0
.end method

.method public final getCodec()I
    .registers 1

    .line 61
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->codec:I

    return p0
.end method

.method public final getDuration()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->duration:I

    return p0
.end method

.method public final getFormatName()Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->formatName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFps()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->fps:I

    return p0
.end method

.method public final getHeight()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->height:I

    return p0
.end method

.method public final getKeyFrameCount()I
    .registers 1

    .line 66
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->keyFrameCount:I

    return p0
.end method

.method public final getMaxDuration()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->maxDuration:I

    return p0
.end method

.method public final getRotation()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->rotation:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->width:I

    return p0
.end method

.method public final setBitrate(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->bitrate:I

    return-void
.end method

.method public final setCodec(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->codec:I

    return-void
.end method

.method public final setDuration(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->duration:I

    return-void
.end method

.method public final setFormatName(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->formatName:Ljava/lang/String;

    return-void
.end method

.method public final setFps(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->fps:I

    return-void
.end method

.method public final setHeight(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->height:I

    return-void
.end method

.method public final setKeyFrameCount(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->keyFrameCount:I

    return-void
.end method

.method public final setMaxDuration(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->maxDuration:I

    return-void
.end method

.method public final setRotation(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->rotation:I

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->width:I

    return-void
.end method
