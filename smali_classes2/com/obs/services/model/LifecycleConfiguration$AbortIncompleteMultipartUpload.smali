.class public Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/LifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbortIncompleteMultipartUpload"
.end annotation


# instance fields
.field protected daysAfterInitiation:I

.field final synthetic this$0:Lcom/obs/services/model/LifecycleConfiguration;


# direct methods
.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;)V
    .registers 2

    .line 588
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 590
    iput p1, p0, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;->daysAfterInitiation:I

    return-void
.end method


# virtual methods
.method public getDaysAfterInitiation()I
    .registers 1

    .line 594
    iget p0, p0, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;->daysAfterInitiation:I

    return p0
.end method

.method public setDaysAfterInitiation(I)V
    .registers 2

    .line 598
    iput p1, p0, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;->daysAfterInitiation:I

    return-void
.end method
