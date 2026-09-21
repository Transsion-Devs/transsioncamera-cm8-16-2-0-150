.class public final enum Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VESmartCutPhotoEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

.field public static final enum VESmartCutPhotoEffectZoomIn:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

.field public static final enum VESmartCutPhotoEffectZoomNone:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

.field public static final enum VESmartCutPhotoEffectZoomOut:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 14
    new-instance v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    const-string v1, "VESmartCutPhotoEffectZoomNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;->VESmartCutPhotoEffectZoomNone:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    .line 15
    new-instance v1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    const-string v2, "VESmartCutPhotoEffectZoomIn"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;->VESmartCutPhotoEffectZoomIn:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    .line 16
    new-instance v2, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    const-string v3, "VESmartCutPhotoEffectZoomOut"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;->VESmartCutPhotoEffectZoomOut:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    .line 13
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;->$VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;
    .registers 2

    .line 13
    const-class v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;
    .registers 1

    .line 13
    sget-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;->$VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult$VESmartCutPhotoEffect;

    return-object v0
.end method
