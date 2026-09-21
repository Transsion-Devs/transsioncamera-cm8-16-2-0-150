.class public Lcom/bytedance/ies/mediaprocessors/assetManager_jni/AssetManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAssetManager(Landroid/content/res/AssetManager;)V
    .registers 1

    .line 9
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/assetManager_jni/AssetManagerHolderJNI;->setAssetManager(Landroid/content/res/AssetManager;)V

    return-void
.end method
