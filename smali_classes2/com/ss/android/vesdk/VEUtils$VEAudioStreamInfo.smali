.class public Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VEAudioStreamInfo"
.end annotation


# instance fields
.field public channelCount:I

.field public codecId:I

.field public duration:I

.field public sampleFormat:I

.field public sampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
