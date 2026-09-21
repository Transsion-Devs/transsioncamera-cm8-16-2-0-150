.class public final synthetic Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame(Landroid/media/Image;III)V
    .registers 5

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->$r8$lambda$k4F60vSjsy6e04x82C5OdhfS7dg(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Landroid/media/Image;III)V

    return-void
.end method
