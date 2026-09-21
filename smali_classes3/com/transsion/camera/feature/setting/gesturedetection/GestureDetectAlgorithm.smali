.class public abstract Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithm;->mContext:Landroid/content/Context;

    return-void
.end method
