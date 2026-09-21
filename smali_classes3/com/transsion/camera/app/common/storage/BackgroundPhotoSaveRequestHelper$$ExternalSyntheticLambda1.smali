.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper$$ExternalSyntheticLambda1;->f$0:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper$$ExternalSyntheticLambda1;->f$0:J

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundPhotoSaveRequestHelper;->$r8$lambda$XEWBR1d64x9lWu_wyxdbmoAo-0s(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
