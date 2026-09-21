.class public final enum Lcom/ss/android/vesdk/VEMVParams$MVResolution;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEMVParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MVResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEMVParams$MVResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEMVParams$MVResolution;

.field public static final enum RES_1080P:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

.field public static final enum RES_2K:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

.field public static final enum RES_720P:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

.field public static final enum RES_720P_REVERSE:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

.field public static final enum RES_CUSTOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

.field public static final enum RES_FROM_TEMPLATE:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

.field public static final enum RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 98
    new-instance v0, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const-string v1, "RES_RANDOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEMVParams$MVResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    new-instance v1, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const-string v2, "RES_720P"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEMVParams$MVResolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_720P:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    new-instance v2, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const-string v3, "RES_1080P"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEMVParams$MVResolution;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_1080P:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    new-instance v3, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const-string v4, "RES_2K"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEMVParams$MVResolution;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_2K:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    new-instance v4, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const-string v5, "RES_720P_REVERSE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEMVParams$MVResolution;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_720P_REVERSE:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    new-instance v5, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const-string v6, "RES_FROM_TEMPLATE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEMVParams$MVResolution;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_FROM_TEMPLATE:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    new-instance v6, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const-string v7, "RES_CUSTOM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/VEMVParams$MVResolution;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_CUSTOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    .line 97
    filled-new-array/range {v0 .. v6}, [Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->$VALUES:[Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEMVParams$MVResolution;
    .registers 2

    .line 97
    const-class v0, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEMVParams$MVResolution;
    .registers 1

    .line 97
    sget-object v0, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->$VALUES:[Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEMVParams$MVResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    return-object v0
.end method
