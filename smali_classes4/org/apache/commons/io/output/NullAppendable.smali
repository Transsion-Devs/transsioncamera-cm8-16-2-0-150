.class public Lorg/apache/commons/io/output/NullAppendable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/output/NullAppendable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lorg/apache/commons/io/output/NullAppendable;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullAppendable;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullAppendable;->INSTANCE:Lorg/apache/commons/io/output/NullAppendable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .registers 2

    .line 0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2

    .line 0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4

    .line 0
    return-object p0
.end method
