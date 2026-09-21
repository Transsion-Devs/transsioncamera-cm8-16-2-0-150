.class public Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public floatPcm:[F

.field public vadRes:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;->floatPcm:[F

    return-void
.end method
