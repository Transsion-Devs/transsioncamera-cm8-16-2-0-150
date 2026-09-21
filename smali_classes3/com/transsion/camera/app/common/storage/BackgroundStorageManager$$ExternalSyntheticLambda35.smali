.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda35;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda35;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->$r8$lambda$fKI6NuwG692rCopyFcbzfaU_knI(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Landroid/net/Uri;)V

    return-void
.end method
