.class public final synthetic Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

.field public final synthetic f$1:Landroid/os/storage/StorageVolume;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Landroid/os/storage/StorageVolume;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda1;->f$1:Landroid/os/storage/StorageVolume;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda1;->f$1:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->$r8$lambda$YKoyIAK-KgKXggnt0qqi2hyBxmI(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Landroid/os/storage/StorageVolume;)V

    return-void
.end method
