.class abstract Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$Holder;->INSTANCE:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 426
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$Holder;->INSTANCE:Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    return-void
.end method
