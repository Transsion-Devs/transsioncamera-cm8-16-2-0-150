.class public Lcom/ss/android/ttve/vealgorithm/params/VEBachCommonImageParam;
.super Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public algorithmType:I

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;-><init>()V

    .line 13
    sget v0, Lcom/ss/android/ttve/vealgorithm/params/VEBachCommonImageType;->VEBachAlgorithmTypeNone:I

    iput v0, p0, Lcom/ss/android/ttve/vealgorithm/params/VEBachCommonImageParam;->algorithmType:I

    .line 9
    sget v0, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmType;->VEAlgorithmTypeBachCommonImage:I

    iput v0, p0, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;->type:I

    return-void
.end method
