.class public final enum Lorg/apache/commons/io/file/StandardDeleteOption;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/file/DeleteOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/file/StandardDeleteOption;",
        ">;",
        "Lorg/apache/commons/io/file/DeleteOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/file/StandardDeleteOption;

.field public static final enum OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lorg/apache/commons/io/file/StandardDeleteOption;

    const-string v1, "OVERRIDE_READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/file/StandardDeleteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    .line 27
    filled-new-array {v0}, [Lorg/apache/commons/io/file/StandardDeleteOption;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->$VALUES:[Lorg/apache/commons/io/file/StandardDeleteOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z
    .registers 6

    .line 43
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->length([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 46
    :cond_8
    array-length v0, p0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_17

    aget-object v3, p0, v2

    .line 47
    sget-object v4, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    if-ne v3, v4, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/file/StandardDeleteOption;
    .registers 2

    .line 27
    const-class v0, Lorg/apache/commons/io/file/StandardDeleteOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/StandardDeleteOption;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/file/StandardDeleteOption;
    .registers 1

    .line 27
    sget-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->$VALUES:[Lorg/apache/commons/io/file/StandardDeleteOption;

    invoke-virtual {v0}, [Lorg/apache/commons/io/file/StandardDeleteOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/file/StandardDeleteOption;

    return-object v0
.end method
