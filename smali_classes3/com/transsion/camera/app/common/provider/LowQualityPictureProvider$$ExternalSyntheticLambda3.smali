.class public final synthetic Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;->$r8$lambda$VMCSwVKn5zdx598slOvHcKZHsqI(Lcom/transsion/camera/app/common/provider/LowQualityPictureProvider;J)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method
