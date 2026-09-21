.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda6;->f$0:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda6;->f$0:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->$r8$lambda$hIaN1XmQXHl5dUvNfnTq9Id-GLE(Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;)V

    return-void
.end method
