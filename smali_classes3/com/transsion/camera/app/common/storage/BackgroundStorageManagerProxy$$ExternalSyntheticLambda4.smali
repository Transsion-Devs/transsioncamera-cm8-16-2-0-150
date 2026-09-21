.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda4;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda4;->f$0:Landroid/net/Uri;

    check-cast p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->$r8$lambda$ZeanYpE7GmAF9fLYi4OC1jG7XTM(Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    return-void
.end method
