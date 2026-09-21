.class public final enum Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

.field public static final enum OkHttpClient:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

.field public static final enum Retrofit:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;


# direct methods
.method private static final synthetic $values()[Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;
    .registers 2

    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->OkHttpClient:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    sget-object v1, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->Retrofit:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    filled-new-array {v0, v1}, [Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 25
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    const-string v1, "OkHttpClient"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->OkHttpClient:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    const-string v1, "Retrofit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->Retrofit:Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->$values()[Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->$VALUES:[Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;
    .registers 2

    const-class v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 26
    check-cast p0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    return-object p0
.end method

.method public static values()[Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;
    .registers 1

    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;->$VALUES:[Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, [Lcom/gallery20/sdk/ai_art/network/AIArtQualifier;

    return-object v0
.end method
