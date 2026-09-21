.class final enum Lcom/ss/android/vesdk/TextureHolder$AttachStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TextureHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AttachStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/TextureHolder$AttachStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

.field public static final enum Attached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

.field public static final enum Detached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 17
    new-instance v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    const-string v1, "Attached"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->Attached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    .line 18
    new-instance v1, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    const-string v2, "Detached"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->Detached:Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    .line 16
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->$VALUES:[Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/TextureHolder$AttachStatus;
    .registers 2

    .line 16
    const-class v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/TextureHolder$AttachStatus;
    .registers 1

    .line 16
    sget-object v0, Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->$VALUES:[Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/TextureHolder$AttachStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/TextureHolder$AttachStatus;

    return-object v0
.end method
