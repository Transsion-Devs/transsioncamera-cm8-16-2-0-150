.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda11;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda11;->f$0:J

    check-cast p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->$r8$lambda$beylGasqufqYHC3nSUGYGMohptg(JLcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    return-void
.end method
