.class public Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mExposure:Ljava/lang/Long;

.field private mIso:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->mIso:I

    .line 31
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->mExposure:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getExposureTime()Ljava/lang/Long;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->mExposure:Ljava/lang/Long;

    return-object p0
.end method

.method public getIso()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->mIso:I

    return p0
.end method

.method public setExposureTime(Ljava/lang/Long;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->mExposure:Ljava/lang/Long;

    return-void
.end method

.method public setIso(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->mIso:I

    return-void
.end method
