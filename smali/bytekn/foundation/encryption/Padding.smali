.class public final enum Lbytekn/foundation/encryption/Padding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/encryption/Padding$Companion;
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbytekn/foundation/encryption/Padding;

.field public static final enum ANSIX923Padding:Lbytekn/foundation/encryption/Padding;

.field public static final Companion:Lbytekn/foundation/encryption/Padding$Companion;

.field public static final enum ISO10126Padding:Lbytekn/foundation/encryption/Padding;

.field public static final enum NoPadding:Lbytekn/foundation/encryption/Padding;

.field public static final enum PKCS7Padding:Lbytekn/foundation/encryption/Padding;

.field public static final enum ZeroPadding:Lbytekn/foundation/encryption/Padding;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lbytekn/foundation/encryption/Padding;

    const-string v1, "NoPadding"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbytekn/foundation/encryption/Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbytekn/foundation/encryption/Padding;->NoPadding:Lbytekn/foundation/encryption/Padding;

    new-instance v1, Lbytekn/foundation/encryption/Padding;

    const-string v2, "PKCS7Padding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbytekn/foundation/encryption/Padding;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbytekn/foundation/encryption/Padding;->PKCS7Padding:Lbytekn/foundation/encryption/Padding;

    new-instance v2, Lbytekn/foundation/encryption/Padding;

    const-string v3, "ANSIX923Padding"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lbytekn/foundation/encryption/Padding;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbytekn/foundation/encryption/Padding;->ANSIX923Padding:Lbytekn/foundation/encryption/Padding;

    new-instance v3, Lbytekn/foundation/encryption/Padding;

    const-string v4, "ISO10126Padding"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lbytekn/foundation/encryption/Padding;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbytekn/foundation/encryption/Padding;->ISO10126Padding:Lbytekn/foundation/encryption/Padding;

    new-instance v4, Lbytekn/foundation/encryption/Padding;

    const-string v5, "ZeroPadding"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lbytekn/foundation/encryption/Padding;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lbytekn/foundation/encryption/Padding;->ZeroPadding:Lbytekn/foundation/encryption/Padding;

    filled-new-array {v0, v1, v2, v3, v4}, [Lbytekn/foundation/encryption/Padding;

    move-result-object v0

    sput-object v0, Lbytekn/foundation/encryption/Padding;->$VALUES:[Lbytekn/foundation/encryption/Padding;

    new-instance v0, Lbytekn/foundation/encryption/Padding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/encryption/Padding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/encryption/Padding;->Companion:Lbytekn/foundation/encryption/Padding$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbytekn/foundation/encryption/Padding;
    .registers 2

    const-class v0, Lbytekn/foundation/encryption/Padding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbytekn/foundation/encryption/Padding;

    return-object p0
.end method

.method public static values()[Lbytekn/foundation/encryption/Padding;
    .registers 1

    sget-object v0, Lbytekn/foundation/encryption/Padding;->$VALUES:[Lbytekn/foundation/encryption/Padding;

    invoke-virtual {v0}, [Lbytekn/foundation/encryption/Padding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbytekn/foundation/encryption/Padding;

    return-object v0
.end method
