.class public final Lcom/google/common/flogger/backend/KeyValueFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/MetadataKey$KeyValueHandler;


# static fields
.field private static final FUNDAMENTAL_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final NEWLINE_LIMIT:I = 0x3e8


# instance fields
.field private haveSeenValues:Z

.field private final out:Ljava/lang/StringBuilder;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const-class v6, Ljava/lang/Float;

    const-class v7, Ljava/lang/Double;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Byte;

    const-class v3, Ljava/lang/Short;

    const-class v4, Ljava/lang/Integer;

    const-class v5, Ljava/lang/Long;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Class;

    move-result-object v1

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/common/flogger/backend/KeyValueFormatter;->FUNDAMENTAL_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->haveSeenValues:Z

    .line 108
    iput-object p1, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->prefix:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->suffix:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 138
    :goto_1
    invoke-static {p1, v0}, Lcom/google/common/flogger/backend/KeyValueFormatter;->nextEscapableChar(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    .line 139
    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_32

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2f

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2c

    const/16 v2, 0x22

    if-eq v1, v2, :cond_34

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_34

    const v1, 0xfffd

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2c
    const/16 v1, 0x72

    goto :goto_34

    :cond_2f
    const/16 v1, 0x6e

    goto :goto_34

    :cond_32
    const/16 v1, 0x74

    .line 166
    :cond_34
    :goto_34
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static appendJsonFormattedKeyAndValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 4

    .line 80
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3d

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_f

    const/4 p0, 0x1

    .line 84
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void

    .line 85
    :cond_f
    sget-object p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->FUNDAMENTAL_TYPES:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    :cond_1f
    const/16 p0, 0x22

    .line 88
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/common/flogger/backend/KeyValueFormatter;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static nextEscapableChar(Ljava/lang/String;I)I
    .registers 4

    .line 172
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1b

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1a
    :goto_1a
    return p1

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public done()V
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->haveSeenValues:Z

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    return-void
.end method

.method public handle(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 115
    iget-boolean v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->haveSeenValues:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_c

    .line 116
    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 120
    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_29

    iget-object v2, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    :cond_29
    const/16 v1, 0xa

    :cond_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    :cond_2e
    iget-object v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->haveSeenValues:Z

    .line 125
    :goto_38
    iget-object p0, p0, Lcom/google/common/flogger/backend/KeyValueFormatter;->out:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p0}, Lcom/google/common/flogger/backend/KeyValueFormatter;->appendJsonFormattedKeyAndValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method
