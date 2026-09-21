.class public abstract synthetic Lbytekn/foundation/encryption/Padding$Companion$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 12

    invoke-static {}, Lbytekn/foundation/encryption/Padding;->values()[Lbytekn/foundation/encryption/Padding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbytekn/foundation/encryption/Padding$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbytekn/foundation/encryption/Padding;->NoPadding:Lbytekn/foundation/encryption/Padding;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lbytekn/foundation/encryption/Padding;->PKCS7Padding:Lbytekn/foundation/encryption/Padding;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v0, v4

    sget-object v4, Lbytekn/foundation/encryption/Padding;->ANSIX923Padding:Lbytekn/foundation/encryption/Padding;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x3

    aput v7, v0, v6

    sget-object v6, Lbytekn/foundation/encryption/Padding;->ISO10126Padding:Lbytekn/foundation/encryption/Padding;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v9, 0x4

    aput v9, v0, v8

    sget-object v8, Lbytekn/foundation/encryption/Padding;->ZeroPadding:Lbytekn/foundation/encryption/Padding;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x5

    aput v11, v0, v10

    invoke-static {}, Lbytekn/foundation/encryption/Padding;->values()[Lbytekn/foundation/encryption/Padding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbytekn/foundation/encryption/Padding$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1

    return-void
.end method
