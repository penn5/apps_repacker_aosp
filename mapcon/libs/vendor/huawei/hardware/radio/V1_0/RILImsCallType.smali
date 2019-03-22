.class public final Lvendor/huawei/hardware/radio/V1_0/RILImsCallType;
.super Ljava/lang/Object;
.source "RILImsCallType.java"


# static fields
.field public static final CALL_TYPE_CS_VS_RX:I = 0x6

.field public static final CALL_TYPE_CS_VS_TX:I = 0x5

.field public static final CALL_TYPE_PS_VS_RX:I = 0x8

.field public static final CALL_TYPE_PS_VS_TX:I = 0x7

.field public static final CALL_TYPE_SMS:I = 0xa

.field public static final CALL_TYPE_UNKNOWN:I = 0x9

.field public static final CALL_TYPE_UT:I = 0xb

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .prologue
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_11

    .line 61
    const-string/jumbo v2, "CALL_TYPE_VOICE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v0, 0x0

    .line 64
    :cond_11
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 65
    const-string/jumbo v2, "CALL_TYPE_VT_TX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x1

    .line 68
    :cond_1e
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 69
    const-string/jumbo v2, "CALL_TYPE_VT_RX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v0, v0, 0x2

    .line 72
    :cond_2b
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_38

    .line 73
    const-string/jumbo v2, "CALL_TYPE_VT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v0, v0, 0x3

    .line 76
    :cond_38
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_45

    .line 77
    const-string/jumbo v2, "CALL_TYPE_VT_NODIR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v0, v0, 0x4

    .line 80
    :cond_45
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_52

    .line 81
    const-string/jumbo v2, "CALL_TYPE_CS_VS_TX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v0, v0, 0x5

    .line 84
    :cond_52
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    .line 85
    const-string/jumbo v2, "CALL_TYPE_CS_VS_RX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v0, v0, 0x6

    .line 88
    :cond_5f
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6c

    .line 89
    const-string/jumbo v2, "CALL_TYPE_PS_VS_TX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v0, v0, 0x7

    .line 92
    :cond_6c
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7a

    .line 93
    const-string/jumbo v2, "CALL_TYPE_PS_VS_RX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v0, v0, 0x8

    .line 96
    :cond_7a
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_88

    .line 97
    const-string/jumbo v2, "CALL_TYPE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v0, v0, 0x9

    .line 100
    :cond_88
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_96

    .line 101
    const-string/jumbo v2, "CALL_TYPE_SMS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v0, v0, 0xa

    .line 104
    :cond_96
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a4

    .line 105
    const-string/jumbo v2, "CALL_TYPE_UT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v0, v0, 0xb

    .line 108
    :cond_a4
    if-eq p0, v0, :cond_c3

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_c3
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .prologue
    .line 18
    if-nez p0, :cond_6

    .line 19
    const-string/jumbo v0, "CALL_TYPE_VOICE"

    return-object v0

    .line 21
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 22
    const-string/jumbo v0, "CALL_TYPE_VT_TX"

    return-object v0

    .line 24
    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 25
    const-string/jumbo v0, "CALL_TYPE_VT_RX"

    return-object v0

    .line 27
    :cond_14
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1b

    .line 28
    const-string/jumbo v0, "CALL_TYPE_VT"

    return-object v0

    .line 30
    :cond_1b
    const/4 v0, 0x4

    if-ne p0, v0, :cond_22

    .line 31
    const-string/jumbo v0, "CALL_TYPE_VT_NODIR"

    return-object v0

    .line 33
    :cond_22
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 34
    const-string/jumbo v0, "CALL_TYPE_CS_VS_TX"

    return-object v0

    .line 36
    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_30

    .line 37
    const-string/jumbo v0, "CALL_TYPE_CS_VS_RX"

    return-object v0

    .line 39
    :cond_30
    const/4 v0, 0x7

    if-ne p0, v0, :cond_37

    .line 40
    const-string/jumbo v0, "CALL_TYPE_PS_VS_TX"

    return-object v0

    .line 42
    :cond_37
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3f

    .line 43
    const-string/jumbo v0, "CALL_TYPE_PS_VS_RX"

    return-object v0

    .line 45
    :cond_3f
    const/16 v0, 0x9

    if-ne p0, v0, :cond_47

    .line 46
    const-string/jumbo v0, "CALL_TYPE_UNKNOWN"

    return-object v0

    .line 48
    :cond_47
    const/16 v0, 0xa

    if-ne p0, v0, :cond_4f

    .line 49
    const-string/jumbo v0, "CALL_TYPE_SMS"

    return-object v0

    .line 51
    :cond_4f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_57

    .line 52
    const-string/jumbo v0, "CALL_TYPE_UT"

    return-object v0

    .line 54
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
