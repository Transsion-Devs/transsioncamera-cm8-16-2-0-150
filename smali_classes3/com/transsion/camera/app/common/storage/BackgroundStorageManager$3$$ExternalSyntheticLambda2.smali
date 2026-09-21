.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->$r8$lambda$m2viEs6t_bhui4zRpYOcbPIGOIQ(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method
