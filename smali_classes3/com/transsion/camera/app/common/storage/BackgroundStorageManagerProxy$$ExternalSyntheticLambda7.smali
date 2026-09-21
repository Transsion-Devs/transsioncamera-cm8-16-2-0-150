.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda7;->f$0:I

    iput p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda7;->f$0:I

    iget p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda7;->f$1:I

    check-cast p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->$r8$lambda$lDlmK7Svt3f6KxCiBsUuBTLPTcs(IILcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    return-void
.end method
