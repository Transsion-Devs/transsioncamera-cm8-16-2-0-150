.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/mode/ICameraMode;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda13;->f$0:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda13;->f$1:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda13;->f$0:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda13;->f$1:Lcom/transsion/camera/app/common/mode/ICameraMode;

    check-cast p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->$r8$lambda$Q4yiZm4thKlGCtqOepN-6fhKcTE(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    return-void
.end method
