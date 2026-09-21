.class public abstract Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectAlgorithm;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    return-void
.end method
