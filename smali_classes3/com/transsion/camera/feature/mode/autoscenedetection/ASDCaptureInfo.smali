.class public Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;
.super Lcom/transsion/camera/app/common/mode/CaptureInfo;
.source "SourceFile"


# instance fields
.field public final mArcFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZZLjava/lang/String;)V
    .registers 5

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    .line 22
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;->mArcFilter:Ljava/lang/String;

    return-void
.end method
