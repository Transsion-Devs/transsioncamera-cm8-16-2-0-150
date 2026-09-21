.class public Lcom/ss/android/vesdk/VEBachAlgorithmCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;
    }
.end annotation


# static fields
.field public static BACH_ALGORITHM_TYPE_AFTEREFFECT:I = 0x1

.field public static BACH_ALGORITHM_TYPE_FACE:I = 0x2


# instance fields
.field algorithmType:Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmType()Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/ss/android/vesdk/VEBachAlgorithmCallback;->algorithmType:Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;

    return-object p0
.end method

.method onResult()V
    .registers 1

    return-void
.end method

.method protected setAlgorithmType(Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBachAlgorithmCallback;->algorithmType:Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;

    return-void
.end method
