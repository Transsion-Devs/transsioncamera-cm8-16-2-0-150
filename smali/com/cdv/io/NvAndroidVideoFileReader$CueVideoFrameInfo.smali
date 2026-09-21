.class public Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/io/NvAndroidVideoFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueVideoFrameInfo"
.end annotation


# instance fields
.field public cueVideoFrameTimeStamp:J

.field public isKeyframe:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
