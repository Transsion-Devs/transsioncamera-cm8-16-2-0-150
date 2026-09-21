.class Lcom/google/common/flogger/LogPerBucketingStrategy$5;
.super Lcom/google/common/flogger/LogPerBucketingStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/LogPerBucketingStrategy;->byHashCode(I)Lcom/google/common/flogger/LogPerBucketingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/LogPerBucketingStrategy<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$maxBuckets:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 178
    iput p2, p0, Lcom/google/common/flogger/LogPerBucketingStrategy$5;->val$maxBuckets:I

    invoke-direct {p0, p1}, Lcom/google/common/flogger/LogPerBucketingStrategy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget p0, p0, Lcom/google/common/flogger/LogPerBucketingStrategy$5;->val$maxBuckets:I

    rem-int/2addr p1, p0

    shr-int/lit8 v0, p1, 0x1f

    and-int/2addr p0, v0

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x80

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
