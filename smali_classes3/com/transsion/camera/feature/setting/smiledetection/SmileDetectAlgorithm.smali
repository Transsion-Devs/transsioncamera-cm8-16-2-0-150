.class public abstract Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mContext:Landroid/content/Context;

    return-void
.end method
