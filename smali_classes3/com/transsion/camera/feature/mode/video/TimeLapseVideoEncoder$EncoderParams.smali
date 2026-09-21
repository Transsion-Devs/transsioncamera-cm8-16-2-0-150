.class public abstract Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EncoderParams"
.end annotation


# instance fields
.field protected mFD:Ljava/io/FileDescriptor;

.field protected mPath:Ljava/lang/String;

.field protected mTimeLapse:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    .registers 4

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mPath:Ljava/lang/String;

    .line 636
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    .line 637
    iput p3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mTimeLapse:I

    return-void
.end method
