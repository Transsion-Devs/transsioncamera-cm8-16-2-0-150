.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentValues;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda2;->f$0:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda2;->f$0:Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    check-cast p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->$r8$lambda$xzuKhk7y_Dp5s8lw3lkZw02OulM(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    return-void
.end method
