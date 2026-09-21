.class public final enum Lcom/ss/android/vesdk/TERecorderContext$MicConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MicConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/TERecorderContext$MicConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

.field public static final enum DEFAULT:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

.field public static final enum DISABLE:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

.field public static final enum ENABLE:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 8
    new-instance v0, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->DEFAULT:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    .line 9
    new-instance v1, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    const-string v2, "DISABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->DISABLE:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    .line 10
    new-instance v2, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    const-string v3, "ENABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->ENABLE:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->$VALUES:[Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/TERecorderContext$MicConfig;
    .registers 2

    .line 7
    const-class v0, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/TERecorderContext$MicConfig;
    .registers 1

    .line 7
    sget-object v0, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->$VALUES:[Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    return-object v0
.end method
